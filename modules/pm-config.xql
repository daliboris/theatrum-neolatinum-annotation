
xquery version "3.1";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-drama-web="http://www.tei-c.org/pm/models/drama/web/module" at "../transform/drama-web-module.xql";
import module namespace pm-drama-print="http://www.tei-c.org/pm/models/drama/print/module" at "../transform/drama-print-module.xql";
import module namespace pm-drama-latex="http://www.tei-c.org/pm/models/drama/latex/module" at "../transform/drama-latex-module.xql";
import module namespace pm-drama-epub="http://www.tei-c.org/pm/models/drama/epub/module" at "../transform/drama-epub-module.xql";
import module namespace pm-drama-fo="http://www.tei-c.org/pm/models/drama/fo/module" at "../transform/drama-fo-module.xql";
import module namespace pm-annotations-web="http://www.tei-c.org/pm/models/annotations/web/module" at "../transform/annotations-web-module.xql";
import module namespace pm-docx-tei="http://www.tei-c.org/pm/models/docx/tei/module" at "../transform/docx-tei-module.xql";

declare variable $pm-config:web-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "drama.odd" return pm-drama-web:transform($xml, $parameters)
case "annotations.odd" return pm-annotations-web:transform($xml, $parameters)
    default return pm-drama-web:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:print-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "drama.odd" return pm-drama-print:transform($xml, $parameters)
    default return pm-drama-print:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:latex-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "drama.odd" return pm-drama-latex:transform($xml, $parameters)
    default return pm-drama-latex:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:epub-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "drama.odd" return pm-drama-epub:transform($xml, $parameters)
    default return pm-drama-epub:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:fo-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "drama.odd" return pm-drama-fo:transform($xml, $parameters)
    default return pm-drama-fo:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:tei-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "docx.odd" return pm-docx-tei:transform($xml, $parameters)
    default return error(QName("http://www.tei-c.org/tei-simple/pm-config", "error"), "No default ODD found for output mode tei")
            
    
};
            
    