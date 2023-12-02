<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('reservations', function (Blueprint $table) {
            $table->id();


            $table->unsignedBigInteger('slot_id');
            $table->foreign('slot_id')->references('id')->on('slots')->onDelete('cascade');

            $table->string('name');
            $table->string('phone');
            $table->string('email');
            $table->string('company_name');


            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
    */
    public function down(): void
    {
        Schema::dropIfExists('reservations');
    }
};
