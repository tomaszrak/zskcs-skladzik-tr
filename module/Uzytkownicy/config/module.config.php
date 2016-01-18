<?php
return array(
     'controllers' => array(
         'invokables' => array(
             'Uzytkownicy\Controller\Uzytkownicy' => 'Uzytkownicy\Controller\UzytkownicyController',
         ),
     ),
    
     'router' => array(
         'routes' => array(
             'uzytkownicy' => array(
                 'type'    => 'segment',
                 'options' => array(
                     'route'    => '/uzytkownicy[/:action][/:user_id]',
                     'constraints' => array(
                         'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                         'username'     => '[0-9]+',
                     ),
                     'defaults' => array(
                         'controller' => 'Uzytkownicy\Controller\Uzytkownicy',
                         'action'     => 'index',
                     ),
                 ),
             ),
         ),
     ),

     'view_manager' => array(
         'template_path_stack' => array(
             'Uzytkownicy' => __DIR__ . '/../view',
         ),
     ),
    
 );
