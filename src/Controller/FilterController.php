<?php

namespace App\Controller;

use App\Entity\Event;
use App\Form\EventType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class FilterController extends AbstractController
{
    #[Route('/category/{type}', name: 'filter_type', methods: ['GET'])]
    public function filtertype($type): Response
    {
        $events = $this->getDoctrine()
            ->getRepository(Event::class)
            ->findByType($type);

            return $this->render('event/index.html.twig', [
            'events' => $events,
        ]);

    }
    
}
