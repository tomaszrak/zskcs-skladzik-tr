<?php

 namespace Zamowienia\Model;
 
 
 use Zend\InputFilter\InputFilter;
 use Zend\InputFilter\InputFilterAwareInterface;
 use Zend\InputFilter\InputFilterInterface;
 //use Skladzik\Model\Skladzik;
 class User_a
 {
     public $username;
 }

 class Zamowienia implements InputFilterAwareInterface
 {
     public $id_zamowienia;
     public $id_uzytkownika;
     public $id_przedmiotu;
     public $data;
     
     public $informacje;
     public $status;
     protected $inputFilter;
     
    public function exchangeArray($data)
     {   $this->id_zamowienia     = (isset($data['id_zamowienia'])) ? $data['id_zamowienia'] : null;
         $this->id_uzytkownika = (isset($data['id_uzytkownika'])) ? $data['id_uzytkownika'] : null;
         $this->id_przedmiotu  = (isset($data['id_przedmiotu'])) ? $data['id_przedmiotu'] : null;
         $this->data  = (isset($data['data'])) ? $data['data'] : null;         
         $this->informacje  = (isset($data['informacje'])) ? $data['informacje'] : null;
         $this->status  = (isset($data['status'])) ? $data['status'] : null;}
     
    public function setInputFilter(InputFilterInterface $inputFilter)
     {throw new \Exception("Not used");}
    public function getArrayCopy()
     {return get_object_vars($this);}
     public function getInputFilter()
     {
         if (!$this->inputFilter) {
             $inputFilter = new InputFilter();

             $inputFilter->add(array(
                 'name'     => 'id_zamowienia',
                 'required' => true,
                 'filters'  => array(
                     array('name' => 'Int'),),));
             $inputFilter->add(array(
                 'name'     => 'id_uzytkownika',
                 'required' => true,
                 'filters'  => array(
                     array('name' => 'StripTags'),
                     array('name' => 'StringTrim'),
                 ),
                 'validators' => array(
                     array(
                         'name'    => 'StringLength',
                         'options' => array(
                             'encoding' => 'UTF-8',
                             'min'      => 1,
                             'max'      => 255,
                         ),
                     ),
                 ),
             ));             
              $inputFilter->add(array(
                 'name'     => 'id_przedmiotu',
                 'required' => true,
                 'filters'  => array(
                     array('name' => 'StripTags'),
                     array('name' => 'StringTrim'),
                 ),
                 'validators' => array(
                     array(
                         'name'    => 'StringLength',
                         'options' => array(
                             'encoding' => 'UTF-8',
                             'min'      => 1,
                             'max'      => 255,
                         ),
                     ),
                 ),
             ));
             $inputFilter->add(array(
                 'name'     => 'data',
                 'required' => false,
                 'filters'  => array(
                     array('name' => 'Int'),
                 ),
             ));
             
             
             $inputFilter->add(array(
                 'name'     => 'informacje',
                 'required' => false,
                 'filters'  => array(
                     array('name' => 'StripTags'),
                     array('name' => 'StringTrim'),
                 ),
                 'validators' => array(
                     array(
                         'name'    => 'StringLength',
                         'options' => array(
                             'encoding' => 'UTF-8',
                             'min'      => 1,
                             'max'      => 255,
                         ),
                     ),
                 ),
             ));
             $inputFilter->add(array(
                 'name'     => 'status',
                 'required' => true,
                 'filters'  => array(
                     array('name' => 'StripTags'),
                     array('name' => 'StringTrim'),
                 ),
                 'validators' => array(
                     array(
                         'name'    => 'StringLength',
                         'options' => array(
                             'encoding' => 'UTF-8',
                             'min'      => 1,
                             'max'      => 255,
                         ),
                     ),
                 ),
             ));

             $this->inputFilter = $inputFilter;
         }

         return $this->inputFilter;
     }
 

 }

