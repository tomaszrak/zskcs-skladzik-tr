<?php
return array(
     'controllers' => array(
         'invokables' => array(
             'Zamowienia\Controller\Zamowienia' => 'Zamowienia\Controller\ZamowieniaController',
             //'Zend\Authentication\AuthenticationService' => 'Zend\Authentication\AuthenticationService',
         ),
     ),
    
    
     'router' => array(
         'routes' => array(
             'zamowienia' => array(
                 'type'    => 'segment',
                 'options' => array(
                     'route'    => '/zamowienia[/:action][/:id_zamowienia]',
                     'constraints' => array(
                         'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                         'id_zamowienia'     => '[0-9]+',
                     ),
                     'defaults' => array(
                         'controller' => 'Zamowienia\Controller\Zamowienia',
                         'action'     => 'indexuser',
                     ),
                 ),
             ),
         ),
     ),

     'view_manager' => array(
         'template_path_stack' => array(
             'zamowienia' => __DIR__ . '/../view',
         ),
     ),
    
 );
