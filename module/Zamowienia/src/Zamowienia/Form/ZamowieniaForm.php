<?php 
namespace Zamowienia\Form;

 use Zend\Form\Form;

 class ZamowieniaForm extends Form
 {
     public function __construct($name = null)
     {
         // we want to ignore the name passed
         parent::__construct('zamowienia');

         $this->add(array(
             'name' => 'id_zamowienia',
             'type' => 'Hidden',
         ));
         $this->add(array(
             'name' => 'id_uzytkownika',
             'type' => 'Text',
             'options' => array(
                 'label' => ' ',), ));
         $this->add(array(
             'name' => 'id_przedmiotu',
             'type' => 'Text',
             'options' => array(
                 'label' => ' ',
             ),
         ));
         $this->add(array(
             'name' => 'data',
             'type' => 'Text',
             'options' => array(
                 'label' => ' ',
             ),
         ));
         $this->add(array(
             'name' => 'informacje',
             'type' => 'Text',
             'options' => array(
                 'label' => ' ',),));
         $this->add(array(
             'name' => 'status',
             //'type' => 'Text',
             'type' => 'Zend\Form\Element\Select',
             'options' => array(
                 'label' => ' ',
                 'value_options' => array(
             'Oczekujące' => 'Oczekujące',
             'Zaakceptowane' => 'Zaakceptowane',
             'Archiwalne' => 'Archiwalne',
             ),),
         ));      
         
         $this->add(array(
             'name' => 'submit',
             'type' => 'Submit',
             'attributes' => array(
                 'value' => 'Go',
                 'id' => 'submitbutton',
             ),
         ));
     }
 }