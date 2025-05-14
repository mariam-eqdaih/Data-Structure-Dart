class Node {
  int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  // Add new node to the end
  void append(int data) {
    if (head == null) {
      head = Node(data);
    } else {
      Node current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = Node(data);
    }
  }

  // Print all elements
  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  // Challenge 1: Print in reverse
  void printReverse(Node? node) {
    if (node == null) return;
    printReverse(node.next);
    print(node.data);
  }

  // Challenge 2: Find middle node
  int? findMiddle() {
    Node? slow = head;
    Node? fast = head;

    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }

    return slow?.data;
  }

  // Challenge 3: Reverse the list
  void reverse() {
    Node? prev = null;
    Node? current = head;

    while (current != null) {
      Node? next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }

    head = prev;
  }

  // Challenge 4: Remove all occurrences of a value
  void removeAll(int target) {
    // Remove from start
    while (head != null && head!.data == target) {
      head = head!.next;
    }

    Node? current = head;

    while (current?.next != null) {
      if (current!.next!.data == target) {
        current.next = current.next!.next;
      } else {
        current = current.next;
      }
    }
  }
}

void main() {
  LinkedList list = LinkedList();

  // Add values
  list.append(1);
  list.append(2);
  list.append(3);
  list.append(2);
  list.append(4);

  print('Original List:');
  list.printList();

  print('\nChallenge 1: Print in Reverse');
  list.printReverse(list.head);

  print('\nChallenge 2: Middle Node');
  print(list.findMiddle());

  print('\nChallenge 3: Reversed List');
  list.reverse();
  list.printList();

  print('\nChallenge 4: Remove All Occurrences of 2');
  list.removeAll(2);
  list.printList();
}
