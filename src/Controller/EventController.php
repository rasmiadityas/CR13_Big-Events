<?php

namespace App\Controller;

use App\Entity\Event;
use App\Form\EventType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/')]
class EventController extends AbstractController
{
    #[Route('/index', name: 'event_index', methods: ['GET'])]
    public function index(): Response
    {
        $events = $this->getDoctrine()
            ->getRepository(Event::class)
            ->findAll();

        return $this->render('event/index.html.twig', [
            'events' => $events,
        ]);
    }

    #[Route('/new', name: 'event_new', methods: ['GET', 'POST'])]
    public function new(Request $request): Response
    {
        $event = new Event();
        $form = $this->createForm(EventType::class, $event);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($event);
            $entityManager->flush();
            $name = $form['name']->getData();
            $this->addFlash(
                'notice',
                'New Event "'.$name.'" Added'
            );
            return $this->redirectToRoute('event_index');
        }

        return $this->render('event/new.html.twig', [
            'event' => $event,
            'form' => $form->createView(),
        ]);
    }

    #[Route('/details/{id}', name: 'event_show', methods: ['GET'])]
    public function show($id): Response
    {
    $events = $this->getDoctrine()
        ->getRepository(Event::class)
        ->findById($id);
        
        return $this->render('event/show.html.twig', [
        'events' => $events,
    ]);
    }

    #[Route('/edit/{id}', name: 'event_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Event $event, $id): Response
    {
        $form = $this->createForm(EventType::class, $event);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();
            $name = $form['name']->getData();
            $this->addFlash(
                'warning',
                'Event "'.$name.'" Updated'
            );
            
            return $this->redirectToRoute('event_index');
        }

        return $this->render('event/edit.html.twig', [
            'id' => $id,
            'event' => $event,
            'form' => $form->createView(),
        ]);
    }

    #[Route('/{id}', name: 'event_delete', methods: ['POST'])]
    public function delete(Request $request, Event $event): Response
    {
        if ($this->isCsrfTokenValid('delete'.$event->getId(), $request->request->get('_token'))) {
            $name = $event->getName();
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($event);
            $entityManager->flush();
            $this->addFlash(
                'danger',
                'Event "'.$name.'" Deleted'
            );
            
        }

        return $this->redirectToRoute('event_index');
    }
}
