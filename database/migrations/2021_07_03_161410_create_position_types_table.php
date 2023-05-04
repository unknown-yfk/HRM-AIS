<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePositionTypesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('position_types', function (Blueprint $table) {
            $table->id();
            $table->string('position')->nullable();
            $table->timestamps();
        });

        DB::table('position_types')->insert([
            ['position' => 'Software Developer'],
            ['position' => 'CEO'],
            ['position' => 'Human Resource Manager'],
            ['position' => 'Employee'],
            
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('position_types');
    }
}
