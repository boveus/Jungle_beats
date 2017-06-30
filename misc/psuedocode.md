- build a test for the node class

- Build a class for node
  - node takes node(data) argument to initialize
  - function node.next_node finds the next node

- build a linkedlist test

- Build a linkedlist class
  - Method .head returns head node
  - Method .next method returns next node
    - do next_node method of next node within the list
  - Method .count returns number of nodes
  - Method .to_string returns all nodes as a single string
  - *list method contains first node? or all nodes?*

- linked list step 3
  - Method .append adds new node to back
  - method .prepend adds new node to front

- linked list step 4
  -  method to insert nodes into list

- linked list step 5
  - 1) .find function
  - 2) .pop function
  - 3) .includes? function


> require "./lib/node"
> node = Node.new("plop")
> node.data
=> "plop"
> node.next_node
=> nil

 - 1) Build a node class similar to the above
 - 2) Node takes an initialize argument with data
 - 3) Function for node.next_node to find the next node

 > require "./lib/linked_list"
 > list = LinkedList.new
 => <LinkedList head=nil #45678904567>
 > list.head
 => nil
 > list.append("doop")
 => "doop"
 > list
 => <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
 > list.head.next_node
 => nil
 > list.count
 => 1
 > list.to_string
 => "doop"

+ Insert head into list

 - 1) Build a LinkedList class
 - 2) Contains a .head .append .next
 - 3) list contains a list of nodes
 - 4) Call the functions for the nodes in the list
 - 5) list.to_string -> return data

 > require "./lib/linked_list"
> list = LinkedList.new
=> <LinkedList head=nil #45678904567>
> list.head
=> nil
> list.append("doop")
=> "doop"
> list
=> <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
> list.head
=> <Node data="doop" next_node=nil #5678904567890>
> list.head.next_node
=> nil
> list.append("deep")
=> "deep"
> list.head.next_node
=> <Node data="deep" next_node=nil #5678904567890>
> list.count
=> 2
> list.to_string
=> "doop deep"

+ Add function to insert multiple nodes into list

- 1) Add function to LinkedList class
- 2) List.append

> require "./lib/linked_list"
> list = LinkedList.new
> list.append("plop")
=> "plop"
> list.to_string
=> "plop"
> list.append("suu")
=> "suu"
> list.prepend("dop")
=> "dop"
> list.to_string
=> "dop plop suu"
> list.count
=> 3
> list.insert(1, "woo")
=> "woo"
list.to_string
=> "dop woo plop suu"

+ Add function to insert and prepend nodes into list

- 1) add insert function
- 2) add prepend function

....
> list.to_string
=> "deep woo shi shu blop"
> list.find(2, 1)
=> "shi"
> list.find(1, 3)
=> "woo shi shu"
> list.includes?("deep")
=> true
> list.includes?("dep")
=> false
> list.pop
=> "blop"
> list.pop
=> "shu"
> list.to_string
=> "deep woo shi"

+ Add find, pop, includes? methods

- 1) Add find function
- 2) add pop function
- 3) add includes? function
