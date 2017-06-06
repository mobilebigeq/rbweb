<?php

namespace App\Http\Controllers\Admin;

use Backpack\CRUD\app\Http\Controllers\CrudController;

// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\CentersRequest as StoreRequest;
use App\Http\Requests\CentersRequest as UpdateRequest;

class CentersCrudController extends CrudController
{
    public function setup()
    {

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */
        $this->crud->setModel('App\Models\Centers');
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/centers');
        $this->crud->setEntityNameStrings('center', 'centers');

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */

        $this->crud->setFromDb();

        // ------ CRUD FIELDS
        // $this->crud->addField($options, 'update/create/both');
        // $this->crud->addFields($array_of_arrays, 'update/create/both');
        // $this->crud->removeField('name', 'update/create/both');
        // $this->crud->removeFields($array_of_names, 'update/create/both');


        /*$this->crud->addField([   // Upload
            'name' => 'image',
            'label' => 'Image',
            'type' => 'upload',
            'upload' => true,
            'disk' => 'uploads' // if you store files in the /public folder, please ommit this; if you store them in /storage or S3, please specify it;
        ]);*/


        $this->crud->addField([ // image
            'label' => "Image",
            'name' => "image",
            'type' => 'image',
            'upload' => true,
         //   'crop' => true, // set to true to allow cropping, false to disable
            'aspect_ratio' => 1, // ommit or set to 0 to allow any aspect ratio
            'prefix' => 'uploads' // in case you only store the filename in the database, this text will be prepended to the database value
        ]);



        $this->crud->addField([   // TinyMCE
            'name' => 'description',
            'label' => 'Description',
            'type' => 'tinymce'
        ]);



        $this->crud->addField([
            'label' => 'Speciality Masters',
            'type' => 'checklist',
            'name' => 'speciality_masters',
            'entity' => 'center_speciality_master',
            'attribute' => 'speciality',
            'model' => 'App\Models\Speciality_masters',
            'pivot' => true
        ]);


        $this->crud->addField([
            'label' => 'Brief Facilities',
            'type' => 'checklist',
            'name' => 'brief_facilities',
            'entity' => 'center_brief_facilities',
            'attribute' => 'description',
            'model' => 'App\Models\Brief_facilities',
            'pivot' => true
        ]);


        $this->crud->addField([
            'label' => 'Our Speciality Features',
            'type' => 'checklist',
            'name' => 'our_speciality_features',
            'entity' => 'our_speciality_features',
            'attribute' => 'title',
            'model' => 'App\Models\Our_speciality_features',
            'pivot' => true
        ]);


        $this->crud->addField([   // TinyMCE
            'name' => 'lat_long',
            'label' => 'Latitude Logitude',
            'type' => 'text'
        ]);


        $this->crud->setColumnDetails('image', ['type'=>'image']);

        // $this->crud->addField([
        //     'label' => 'Doctors',
        //     'type' => 'checklist',
        //     'name' => 'doctors',
        //     'entity' => 'doctors',
        //     'attribute' => 'name',
        //     'model' => 'App\Models\Doctors',
        //     'pivot' => true
        // ]);

          
        // ------ CRUD COLUMNS
        // $this->crud->addColumn(); // add a single column, at the end of the stack
        // $this->crud->addColumns(); // add multiple columns, at the end of the stack
        // $this->crud->removeColumn('column_name'); // remove a column from the stack
        // $this->crud->removeColumns(['column_name_1', 'column_name_2']); // remove an array of columns from the stack
        // $this->crud->setColumnDetails('column_name', ['attribute' => 'value']); // adjusts the properties of the passed in column (by name)
        // $this->crud->setColumnsDetails(['column_1', 'column_2'], ['attribute' => 'value']);
        // $this->crud->setColumnsDetails('image', ['type'=>'image']);
         // $this->crud->setColumnsDetails('image',['type'=>'image']);
        // ------ CRUD BUTTONS
        // possible positions: 'beginning' and 'end'; defaults to 'beginning' for the 'line' stack, 'end' for the others;
        // $this->crud->addButton($stack, $name, $type, $content, $position); // add a button; possible types are: view, model_function
        // $this->crud->addButtonFromModelFunction($stack, $name, $model_function_name, $position); // add a button whose HTML is returned by a method in the CRUD model
        // $this->crud->addButtonFromView($stack, $name, $view, $position); // add a button whose HTML is in a view placed at resources\views\vendor\backpack\crud\buttons
        // $this->crud->removeButton($name);
        // $this->crud->removeButtonFromStack($name, $stack);
        // $this->crud->removeAllButtons();
        // $this->crud->removeAllButtonsFromStack('line');

          $this->crud->addColumn([ // n-n relationship (with pivot table)
        'label' => "Speciality_Masters", // Table column heading
        'type' => "select_multiple",
        'name' => 'speciality_masters', // the method that defines the relationship in your Model
        'entity' => 'speciality_masters', // the method that defines the relationship in your Model
        'attribute' => "speciality", // foreign key attribute that is shown to user
        'model' => "App\Models\Speciality_masters", // foreign key model
        ]);

          $this->crud->addColumn([ // n-n relationship (with pivot table)
        'label' => "Brief_facilites", // Table column heading
        'type' => "select_multiple",
        'name' => 'brief_facilities', // the method that defines the relationship in your Model
        'entity' => 'brief_facilities', // the method that defines the relationship in your Model
        'attribute' => "description", // foreign key attribute that is shown to user
        'model' => "App\Models\Brief_facilities", // foreign key model
        ]);



          $this->crud->addColumn([ // n-n relationship (with pivot table)
        'label' => "Our_speciality_features", // Table column heading
        'type' => "select_multiple",
        'name' => 'our_speciality_features', // the method that defines the relationship in your Model
        'entity' => 'our_speciality_features', // the method that defines the relationship in your Model
        'attribute' => "title", // foreign key attribute that is shown to user
        'model' => "App\Models\Our_speciality_features", // foreign key model
        ]);


        //     $this->crud->addColumn([ // n-n relationship (with pivot table)
        // 'label' => "Doctors", // Table column heading
        // 'type' => "select_multiple",
        // 'name' => 'doctors', // the method that defines the relationship in your Model
        // 'entity' => 'doctors', // the method that defines the relationship in your Model
        // 'attribute' => "name", // foreign key attribute that is shown to user
        // 'model' => "App\Models\Doctors", // foreign key model
        // ]);

        // ------ CRUD ACCESS
        // $this->crud->allowAccess(['list', 'create', 'update', 'reorder', 'delete']);
        // $this->crud->denyAccess(['list', 'create', 'update', 'reorder', 'delete']);

        // ------ CRUD REORDER
        // $this->crud->enableReorder('label_name', MAX_TREE_LEVEL);
        // NOTE: you also need to do allow access to the right users: $this->crud->allowAccess('reorder');

        // ------ CRUD DETAILS ROW
        // $this->crud->enableDetailsRow();
        // NOTE: you also need to do allow access to the right users: $this->crud->allowAccess('details_row');
        // NOTE: you also need to do overwrite the showDetailsRow($id) method in your EntityCrudController to show whatever you'd like in the details row OR overwrite the views/backpack/crud/details_row.blade.php

        // ------ REVISIONS
        // You also need to use \Venturecraft\Revisionable\RevisionableTrait;
        // Please check out: https://laravel-backpack.readme.io/docs/crud#revisions
        // $this->crud->allowAccess('revisions');

        // ------ AJAX TABLE VIEW
        // Please note the drawbacks of this though:
        // - 1-n and n-n columns are not searchable
        // - date and datetime columns won't be sortable anymore
        // $this->crud->enableAjaxTable();

        // ------ DATATABLE EXPORT BUTTONS
        // Show export to PDF, CSV, XLS and Print buttons on the table view.
        // Does not work well with AJAX datatables.
        // $this->crud->enableExportButtons();

        // ------ ADVANCED QUERIES
        // $this->crud->addClause('active');
        // $this->crud->addClause('type', 'car');
        // $this->crud->addClause('where', 'name', '==', 'car');
        // $this->crud->addClause('whereName', 'car');
        // $this->crud->addClause('whereHas', 'posts', function($query) {
        //     $query->activePosts();
        // });
        // $this->crud->addClause('withoutGlobalScopes');
        // $this->crud->addClause('withoutGlobalScope', VisibleScope::class);
        // $this->crud->with(); // eager load relationships
        // $this->crud->orderBy();
        // $this->crud->groupBy();
        // $this->crud->limit();
    }

    public function store(StoreRequest $request)
    {
        // your additional operations before save here
        $redirect_location = parent::storeCrud();
        // your additional operations after save here
        // use $this->data['entry'] or $this->crud->entry
        return $redirect_location;
    }

    public function update(UpdateRequest $request)
    {
        // your additional operations before save here
        $redirect_location = parent::updateCrud();
        // your additional operations after save here
        // use $this->data['entry'] or $this->crud->entry
        return $redirect_location;
    }
}
