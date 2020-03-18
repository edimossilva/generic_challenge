####When would you use inheritance and when composition?
####Give an example of both.

- **Inheritance**
  - When the relationship between the entities is (**IS A**)
    - e.g: it is clear that _Playstation_ **IS A** _Console_ and _Xbox_ **IS A** _Console_
  - When makes sence that everything from ClassA can be used by classB
    - e.g: may not be necessary to use all the the parent class has, but it would be possible to.
  

- **Compostion**  
  - When the relationship between the entities is (**HAS ONE**)
    - e.g: it is clear that _Human_ **HAS A** _Heart_


- **Personal Preference**
  - I love OO, but if possible I try to use composition instead of Inheritance, I believe that inheritance increases code complexity and indirection, it also is a resource that genericaly can be used only once _(we don't use multiple inheritance with frequence right?)_, so is better to be sure about it before use. 