# LabVIEW JSON-Schema-Generator

[JSON Schema](https://json-schema.org/) is vocabulary which allows the definition of rules on how JSON data should be structured and validated. This allows for data consistancy, validation and interoperability between applications and languages. 

The LabVIEW JSON-Schema-Generator aims to extend the excellent JSONtext library by Dr. Powel by providing methods to generate a JSON Schema based of LabVIEW datatypes. The JSONtext library provides all common operations to handle JSON data as well as a validator against a JSON Schema. 

The current code base was developed based on internal requirements but has been open-sourced with the intention to develop a general tool to create JSON Schemas with LabVIEW.


Example:

![example](Example/example_diagram.png)
![alt text](Example/example_front.png)


## Scope

State: Work in Progress

The current implementation has the asumption that the root level of the JSON Schema is generated based on a cluster. Differnet properties of an control in the cluster are added to the Schema. Standard are the name and the description of a control. 

Supported data types:
- Clusters
  - with recursitve parsing
  - typedef support
- Arrays
  - cluster support
  - `#todo` add typedef support
- Strings
  - support for `minLength` and `maxLength` keywords via Description field. Use to add length validation to the string. `"minLength": 1` would mean that a string needs to have a value.
- Enums
  - typedef support
- Booleans 
- Numerics
  - support for `minimum`and `maximum` keywords


  - support for  `exclusiveMinium` and `exclusiveMaximum` keywords
  - support for `multipleOf` of keyoword to specify the steps size of the value

  ```
  x ≥ minimum
  x > exclusiveMinimum
  x ≤ maximum
  x < exclusiveMaximum
  ```



If a control in the cluster is a typedef it will also get parsed and added to the Schema via `$ref` tags to the `$def` section of the schema. This allow for the reuse within a schema. 

Some data types support additional keywords to further specify their evaluation.
These additional keywords are added via the "Description" property of the corresponding control in LabVIEW. Then the description is replaced with a JSON object. 

#### Example:
```
{
  "description": "This is a String Control",
  "minLength": 5,
  "maxLength": 20
}
```

## Development
The library is currently developed in Labview 2023 (64bit).

Required VIPM packages: see required-packages.vipc

## License

Copyright 2024 Novatron Fusion Group AB

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
