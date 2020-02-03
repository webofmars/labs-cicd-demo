<?php

namespace App\Tests;

use App\Entity\Contact;
use PHPUnit\Framework\TestCase;

class ContactTest extends TestCase
{
    public function testContactRegistration()
    {
        $contact = new Contact();
        $contact->setFirstname('John');
        $contact->setLastname('Doe');

        $this->assertEquals(
            $contact->getFullname(),
            'John Doe'
        );
    }
}
