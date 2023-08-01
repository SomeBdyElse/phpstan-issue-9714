<?php
declare(strict_types = 1);

class ExampleClass {
    public function exampleFunction(): void
    {
        $xml = new \SimpleXMLElement('');
        $elements = $xml->xpath('//data');
        foreach($elements as $element) {
            echo (string)$element;
        }
    }
}
