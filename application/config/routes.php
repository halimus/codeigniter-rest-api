<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'rest_server';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

/*
| -------------------------------------------------------------------------
| Sample REST API Routes
| -------------------------------------------------------------------------
*/

//$route['api/example/users/(:num)'] = 'api/example/users/id/$1'; // Example 4
//$route['api/example/users/(:num)(\.)([a-zA-Z0-9_-]+)(.*)'] = 'api/example/users/id/$1/format/$3$4'; // Example 8

$route['api'] = 'api/users/';

//api/users
$route['api/users'] = 'api/users/users/';
$route['api/users/format/json'] = 'api/users/users/format/json';
$route['api/users/format/xml'] = 'api/users/users/format/xml';
$route['api/users/format/html'] = 'api/users/users/format/html';
$route['api/users/format/csv'] = 'api/users/users/format/csv';

$route['api/users.json'] = 'api/users/users.json';
$route['api/users.xml'] = 'api/users/users.xml';
$route['api/users.html'] = 'api/users/users.html';
$route['api/users.csv'] = 'api/users/users.csv';

//api/users/1
$route['api/users/id/(:num)'] = 'api/users/users/id/$1';
//$route['api/users/id/(:any)'] = 'api/users/users/id/$1';
$route['api/users/id/(:num)/format/json'] = 'api/users/users/id/$1/format/json';
$route['api/users/id/(:num)/format/xml'] = 'api/users/users/id/$1/format/xml';
$route['api/users/id/(:num)/format/html'] = 'api/users/users/id/$1/format/html';
$route['api/users/id/(:num)/format/csv'] = 'api/users/users/id/$1/format/csv';

$route['api/users/id/(:num).json'] = 'api/users/users/id/$1.json';
$route['api/users/id/(:num).xml'] = 'api/users/users/id/$1.xml';
$route['api/users/id/(:num).html'] = 'api/users/users/id/$1.html';
$route['api/users/id/(:num).csv'] = 'api/users/users/id/$1.csv';


//$route['api/example/users/(:num)'] = 'api/example/users/id/$1'; // Example 4
//$route['api/example/users/(:num)(\.)([a-zA-Z0-9_-]+)(.*)'] = 'api/example/users/id/$1/format/$3$4'; // Example 8
//

//$route['api/users/(:num)'] = 'api/users/users/$1';

//$route['api/users/format/xml'] = 'api/users/users/format/xml'; // Example 8

//$route['api/users/(:num)(\.)([a-zA-Z0-9_-]+)(.*)'] = 'api/users/users/$1/format/$3$4'; // Example 8

//$route['api/users/(:num)/format/xml'] = 'api/users/users/$1/format/$3$4'; // Example 8



//<li><a href="<?php echo site_url('api/example/users/1.xml'); </li>


//$route['api/example/users/(:num)'] = 'api/example/users/id/$1'; // Example 4
//$route['api/example/users/(:num)(\.)([a-zA-Z0-9_-]+)(.*)'] = 'api/example/users/id/$1/format/$3$4'; // Example 8
//
//$route['api/api'] = 'api/api';

//$route['api/api/users/(:num)'] = 'api/api/users/id/$1'; // Example 4
//$route['api/api/users/(:num)(\.)([a-zA-Z0-9_-]+)(.*)'] = 'api/api/users/id/$1/format/$3$4'; // Example 8

//$route['api'] = 'api/api';
//$route['api/(:any)'] = 'api/$1';

/*
 * Custom routes for frontend
 */
//$route['channel/(:num)'] = "channel/index/$1";3
//$route['channel/(:any)'] = "channel/index/$1";
//$route['channel/(:any)/(:any)'] = "channel/index/$1/$2";
//$route['admin'] = 'backend/dashboard';
//$route['admin/(:any)'] = 'backend/$1';
//$route['admin/(:any)/(:any)'] = 'backend/$1/$2';
//$route['admin/(:any)/(:any)/(:any)'] = 'backend/$1/$2/$3';