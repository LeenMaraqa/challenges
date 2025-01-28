class Node {
  int data;
  Node? next;
  Node(this.data, {this.next});
}

//Print in Reverse
void printInReverse(Node? head) {
  if (head == null) {
    return;
  }
  printInReverse(head.next);
  print(head.data);
}

//Find the Middle Node
Node? findMiddleNode(Node? head) {
  if (head == null) {
    return null;
  }
  Node? slow = head;
  Node? fast = head;
  while (fast != null && fast.next != null) {
    slow = slow?.next;
    fast = fast.next?.next;
  }
  return slow;
}

//Reverse a Linked List
Node? reverseList(Node? head) {
  Node? prev = null;
  Node? current = head;

  while (current != null) {
    Node? nextNode = current.next;
    current.next = prev;
    prev = current;
    current = nextNode;
  }

  return prev;
}

//Remove All Occurrences
Node? removeAllOccurrences(Node? head, int value) {
  //Print the list before removal
  print("List before removal:");
  printList(head);
  while (head != null && head.data == value) {
    head = head.next;
  }
  Node? current = head;
  while (current != null && current.next != null) {
    if (current.next!.data == value) {
      current.next = current.next!.next;
    } else {
      current = current.next;
    }
  }
  //Print the list after removal
  print("List after removal:");
  printList(head);
  return head;
}

//Print the linked list
void printList(Node? head) {
  Node? current = head;
  if (current == null) {
    print("The list is empty.");
    return;
  }
  while (current != null) {
    print(current.data);
    current = current.next;
  }
}

void main() {
  Node? head =
      Node(1, next: Node(2, next: Node(3, next: Node(4, next: Node(5)))));
  Node? head2 =
      Node(1, next: Node(2, next: Node(1, next: Node(4, next: Node(7)))));

  print("Challenge 1: Print in Reverse");
  printInReverse(head);
  print("-------------------------------------------");
  print("Challenge 2: Find the Middle Node");
  Node? middle = findMiddleNode(head);
  if (middle != null) {
    print(middle.data);
  }
  print("-------------------------------------------");
  print("Challenge 3: Reverse the Linked List");
  Node? reversedHead = reverseList(head);
  printList(reversedHead);
  print("-------------------------------------------");
  print("Challenge 4: Remove All Occurrences of 1");
  head = removeAllOccurrences(head2, 1);
}
