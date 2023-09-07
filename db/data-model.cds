namespace fullstack_dev_challenge;

using
{
    cuid,
    managed
}
from '@sap/cds/common';

entity Tests : managed
{
    title : String;
    description : String;
    questions : Association to many Questions on questions.test = $self;
}

entity Questions : cuid
{
    text : String;
    test : Association to Tests; //> the backlink
    answer : Composition of one Answers;
}

aspect Answers : cuid
{
    text : String;
}
