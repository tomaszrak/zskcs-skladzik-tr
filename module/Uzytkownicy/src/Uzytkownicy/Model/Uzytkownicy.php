<?php

 namespace Uzytkownicy\Model;
 
 
 use Zend\InputFilter\InputFilter;
 use Zend\InputFilter\InputFilterAwareInterface;
 use Zend\InputFilter\InputFilterInterface;
 //use Skladzik\Model\Skladzik;


 class Uzytkownicy implements InputFilterAwareInterface
 {
     public $username;
     public $user_id;
     public $state;
     public $email;
     
     
     protected $inputFilter;
     
     public function exchangeArray($data)
     {
         $this->username     = (isset($data['username'])) ? $data['username'] : null;
         $this->user_id = (isset($data['user_id'])) ? $data['user_id'] : null;
         $this->state  = (isset($data['state'])) ? $data['state'] : null;
         
         $this->email  = (isset($data['email'])) ? $data['email'] : null;
         
         
     }
     
     public function setInputFilter(InputFilterInterface $inputFilter)
     {
         throw new \Exception("Not used");
     }
    public function getArrayCopy()
     {
         return get_object_vars($this);
     }
     public function getInputFilter()
     {
         if (!$this->inputFilter) {
             $inputFilter = new InputFilter();

             $inputFilter->add(array(
                 'name'     => 'username',
                 'required' => true,
                 'filters'  => array(
                     array('name' => 'Int'),
                 ),
             ));
             $inputFilter->add(array(
                 'name'     => 'user_id',
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
                 'name'     => 'state',
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
                             
                         ),
                     ),
                 ),
             ));
             
             $inputFilter->add(array(
                 'name'     => 'email',
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

