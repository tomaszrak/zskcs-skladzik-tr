<?php
return array(
     'controllers' => array(
         'invokables' => array(
             'Skladzik\Controller\Skladzik' => 'Skladzik\Controller\SkladzikController',
         ),
     ),
    
     'router' => array(
         'routes' => array(
             'skladzik' => array(
                 'type'    => 'segment',
                 'options' => array(
                     'route'    => '/skladzik[/:action][/:id_przedmiotu]',
                     'constraints' => array(
                         'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                         'id_przedmiotu'     => '[0-9]+',
                     ),
                     'defaults' => array(
                         'controller' => 'Skladzik\Controller\Skladzik',
                         'action'     => 'index',
                     ),
                 ),
             ),
         ),
     ),

     'view_manager' => array(
         'template_path_stack' => array(
             'skladzik' => __DIR__ . '/../view',
         ),
     ),
    
 );
