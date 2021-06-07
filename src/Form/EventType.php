<?php

namespace App\Form;

use App\Entity\Event;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name', TextType::class, [
                'label' => 'Name',
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px', 'placeholder' => 'Event Name']                
            ])
            ->add('datetime', DateTimeType::class, [
                'label' => 'Starting Date and Time',
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']                
            ])
            ->add('descript', TextareaType::class, [
                'label' => 'Description',
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px', 'rows' => 5, 'placeholder' => 'Event Description']                
            ])
            ->add('image', TextareaType::class, [
                'label' => 'Image URL',
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px', 'rows' => 2, 'placeholder' => 'http://...']                
            ])
            ->add('capacity', IntegerType::class, [
                'label' => 'Capacity',
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px', 'placeholder' => 'Number of People']                
            ])
            ->add('email', TextType::class, [
                'label' => 'Contact Email',
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px', 'placeholder' => 'e.g. info@mail.com']                
            ])
            ->add('phone', TextType::class, [
                'label' => 'Contact Phone',
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px', 'placeholder' => 'e.g. 01234...']                
            ])
            ->add('address', TextType::class, [
                'label' => 'Location Address',
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px', 'placeholder' => 'e.g. Ringstrasse 1']                
            ])
            ->add('zip', IntegerType::class, [
                'label' => 'Location ZipCode',
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px', 'placeholder' => 'e.g. 1010']                
            ])
            ->add('city', TextType::class, [
                'label' => 'Location City',
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px', 'placeholder' => 'e.g.Vienna']                
            ])
            ->add('link', TextareaType::class, [
                'label' => 'Info Link',
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px', 'rows' => 2, 'placeholder' => 'http://...']                
            ])
            ->add('type', ChoiceType::class, [
                'label' => 'Category',
                'choices' => array('Sport' => 'Sport', 'Music' => 'Music', 'Performance' => 'Performance', 'Culture' => 'Culture', 'Gastronomy' => 'Gastronomy'),
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']                
            ])
        ;
    }
    
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
