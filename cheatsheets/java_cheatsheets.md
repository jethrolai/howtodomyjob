#### Sublisting
```java
newList = list.subList(start, endExclusive);
```
#### Multiple condition sorting
```java
Collections.sort(listOfString, (string1, string2) -> {
    int i = new Integer(s2.length()).compareTo(new Integer(string1.length())); // descending
    return i==0 ? s1.compareTo(s2): i;
}); 
```
#### Shuffle/Randomize List or Array
```java
Collections.shuffle(list); 
Collections.shuffle(Arrays.asList(array)); 
```
#### Counting bits
```java
int bitCount = Integer.bitCount(i);
```
#### Char array to String
```java
new String(charArray);
```
