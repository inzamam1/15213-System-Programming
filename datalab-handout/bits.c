/*
 * CS:APP Data Lab
 *
 * <Please put your name and userid here>
 * Inzamam Sayyed - isayyed@andrew.cmu.edu (tobi-Autolab)
 *
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 */

/* Instructions to Students:

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:

  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code
  must conform to the following style:

  long Funct(long arg1, long arg2, ...) {
      // brief description of how your implementation works
      long var1 = Expr1;
      ...
      long varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. (Long) integer constants 0 through 255 (0xFFL), inclusive. You are
      not allowed to use big constants such as 0xffffffffL.
  2. Function arguments and local variables (no global variables).
  3. Local variables of type int and long
  4. Unary integer operations ! ~
     - Their arguments can have types int or long
     - Note that ! always returns int, even if the argument is long
  5. Binary integer operations & ^ | + << >>
     - Their arguments can have types int or long
  6. Casting from int to long and from long to int

  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting other than between int and long.
  7. Use any data type other than int or long.  This implies that you
     cannot use arrays, structs, or unions.

  You may assume that your machine:
  1. Uses 2s complement representations for int and long.
  2. Data type int is 32 bits, long is 64.
  3. Performs right shifts arithmetically.
  4. Has unpredictable behavior when shifting if the shift amount
     is less than 0 or greater than 31 (int) or 63 (long)

EXAMPLES OF ACCEPTABLE CODING STYLE:
  //
  // pow2plus1 - returns 2^x + 1, where 0 <= x <= 63
  //
  long pow2plus1(long x) {
     // exploit ability of shifts to compute powers of 2
     // Note that the 'L' indicates a long constant
     return (1L << x) + 1L;
  }

  //
  // pow2plus4 - returns 2^x + 4, where 0 <= x <= 63
  //
  long pow2plus4(long x) {
     // exploit ability of shifts to compute powers of 2
     long result = (1L << x);
     result += 4L;
     return result;
  }

NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to
     check the legality of your solutions.
  2. Each function has a maximum number of operations (integer, logical,
     or comparison) that you are allowed to use for your implementation
     of the function.  The max operator count is checked by dlc.
     Note that assignment ('=') is not counted; you may use as many of
     these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

CAUTION:
  Do not add an #include of <stdio.h> (or any other C library header)
  to this file.  C library headers almost always contain constructs
  that dlc does not understand.  For debugging, you can use printf,
  which is declared for you just below.  It is normally bad practice
  to declare C library functions by hand, but in this case it's less
  trouble than any alternative.

  dlc will consider each call to printf to be a violation of the
  coding style (function calls, after all, are not allowed) so you
  must remove all your debugging printf's again before submitting your
  code or testing it with dlc or the BDD checker.  */

extern int printf(const char *, ...);

/* Edit the functions below.  Good luck!  */
// 1
/*
 * bitMatch - Create mask indicating which bits in x match those in y
 *            using only ~ and &
 *   Example: bitMatch(0x7L, 0xEL) = 0xFFFFFFFFFFFFFFF6L
 *   Legal ops: ~ &
 *   Max ops: 14
 *   Rating: 1
 */
long bitMatch(long x, long y) {
    //performing bitmatch by first seeing only the bits that are set in x and y
    //bits set in x and y inclusive
    long onlyx= ~x&y;
    //bits set in y and x inclusive
    long onlyy= ~y&x;
    //now invert to also account for 0's and compare which two bits are equal
    long match = (~onlyx & ~onlyy);
    // printf(match);
    return (match);
}
// 2
/*
 * implication - given input x and y, which are binary
 * (taking  the values 0 or 1), return x -> y in propositional logic -
 * 0 for false, 1 for true
 *
 * Below is a truth table for x -> y where A is the result
 *
 * |-----------|-----|
 * |  x  |  y  |  A  |
 * |-----------|-----|
 * |  1  |  1  |  1  |
 * |-----------|-----|
 * |  1  |  0  |  0  |
 * |-----------|-----|
 * |  0  |  1  |  1  |
 * |-----------|-----|
 * |  0  |  0  |  1  |
 * |-----------|-----|
 *
 *
 *   Example: implication(1L,1L) = 1L
 *            implication(1L,0L) = 0L
 *   Legal ops: ! ~ ^ |
 *   Max ops: 5
 *   Rating: 2
 */
long implication(long x, long y) {
    //return only 0 or 1?
    //The condition here is on y, if y is 0 and x is 1, then also a is 0
    //multiply y to the power of x and negate to get the value of 0 in only case 4
    //then or with y to get the implication  
    long im = (y) | (!(y ^ x));
    return im;
}
/*
 * leastBitPos - return a mask that marks the position of the
 *               least significant 1 bit. If x == 0, return 0
 *   Example: leastBitPos(96L) = 0x20L
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
long leastBitPos(long x) {
    //To find the least significant bit we can first find the 2's compliment of the number to 
    //get the bit set from the right. but this will also make all the leading 0 bits 1.
    long lb1= ~x+1;
    //to set only the least bit and making other bits 0 we can and with x, to only include the lsb
    //and make other leading bits 0
    long lb = x & lb1;
    return lb;
}
/*
 * oddBits - return word with all odd-numbered bits set to 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 2
 */
long oddBits(void) {
    //make all odd bits 1, clarified on ed post https://edstem.org/us/courses/72024/discussion/5985056
    //cannot initiaze the variable beyond 0xff, so first creating a mask for odd bits
    // odd bits =  1010 pattern ~~a
    // reverse divide and conquer approach?
    long odd = 0xaa; //this is 10101010 (8 bits allowed)
    odd += odd << 8; //this is 1010101010101010
    odd += odd << 16; //this is 10101010101010101010101010101010
    odd += odd << 32; //this is 1010101010101010101010101010101010101010101010101010101010101010
    return odd;
    //This was the easiest to work on XD
}
/*
 * dividePower2 - Compute x/(2^n), for 0 <= n <= 62
 *  Round toward zero
 *   Examples: dividePower2(15L,1L) = 7L, dividePower2(-33L,4L) = -2L
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
long dividePower2(long x, long n) {
    //Divide by power 2 we can directly shift??
    //long div=x>>n;
    //return div;
    //This works for unsigned/ positive numbers well, but -ve numbers doesnt work
    //referred CS:APP Chapter 2, Pg 142 Dividing power 2 for unsigned, have to use bias and then shift
    //Formula to consider from CS:App, (x<0? x+(1<<k)-1:x)>>k
    //Have to take care of the sign as well, as it will go off if shifted before sign manipulation
    // long sign = x >> 63;//last bit will be sign bit
    // long bias = (1L << n)-1;
    // long div = (x + (sign & bias));
    // return div >> n; cannot use - operator, have to find other way to subtract.
    // Extract sign bit
    long sign = x >> 63;        
    // Compute bias: (1 << n) - 1 here -1 = +~1L+1
    long bias = (1L << n) + ~1L +1 ;
    // Add bias if x is negative 0 if not negative, treat as positive 
    long div = x + (sign & bias); 
    //Now shift by n that would effectively do /2^n
    return div >> n;
}
// 3
/*
 * isLessOrEqual - if x <= y  then return 1, else return 0
 *   Example: isLessOrEqual(4L,5L) = 1L.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
long isLessOrEqual(long x, long y) {
    //first substracting x from y to see if y is bigger
    long diff = y + (~x+1);
    //Extracting and Setting the sign of the difference which is the Highest bit, if y>x then this will be 0?
    long signdiff = (diff>>63)&1;
    //Extracting individual signs
    long xsign = (x>>63)&1;
    long ysign = (y>>63)&1;
    //Return 0 when both signs are same, both -ve or +ve, exclusive or
    long diffsign= xsign ^ ysign;
    //As the condition is on x ,Now check if the substracted sign and the sign of both the operands
    long xsmall= diffsign&xsign;
    //Also check if the sign was same for differcne and both the operand, if same then it would give 0 so negate
    long bothsign= !signdiff&!diffsign;
    return bothsign|xsmall;
}
/*
 * rotateLeft - Rotate x to the left by n
 *   Can assume that 0 <= n <= 63
 *   Examples:
 *      rotateLeft(0x8765432187654321L,4L) = 0x7654321876543218L
 *   Legal ops: ~ & ^ | + << >> !
 *   Max ops: 25
 *   Rating: 3
 */
long rotateLeft(long x, long n) {
    //To rotate, we can just move the bits to left, but also have to take care 
    //of the bits that are going off due to the left shift. This is more like arithmetic shift
    //basic idea was shift left by n and create a copy of x and shift right the same bits by 64-n
    //divide and conquer
    long y = x;
    long shiftright=1L<<6; //This will be 64
    //shift x to left by n, now the new right n bits will be 0
    long left= x<<n;
    //this implements y=y>>(64-n)
    long right= y>>(shiftright+(~n+1));
    //this works for +ve numbers, for -ve numbers will have to do something simiar to bias
    right = right &((1L<<n) + ~1L +1);
    //if the number is -ve the right side will be modified, if not then it will be kept as is
    //append both the left and right and return
    return left|right;
}
/*
 * conditional - same as x ? y : z
 *   Example: conditional(2,4L,5L) = 4L
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
long conditional(long x, long y, long z) {
    //Handout problem
    //return 0xff.... when x = 0 and 0x00 otherwise
    //if x = 2, !x=0-> ~x =ffff -> +1 == 0000
    long mask= ~(!x)+1;
    //now if x = 0 return z, else return y
    //~0000=ffff& 4 | 0000 & 5. The second part is 0 here.
    return (~mask&y)|(mask&z);
}
/*
 * isLess - if x < y  then return 1, else return 0
 *   Example: isLess(4L,5L) = 1L.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
long isLess(long x, long y) {
    //Checking the condition similar to the less and equal but no equal this time
    //As condition revolves around x, subtracting y from x
    long diff = x + (~y+1);
    //Extracting the sign of the difference
    long signdiff = (diff>>63)&1;
    //Extracting individual signs
    long xsign = (x>>63)&1;
    long ysign = (y>>63)&1;
    //Return 0 when both signs are same, both -ve or +ve, exclusive or
    long diffsign= xsign ^ ysign;
    //computing the small of both
    long xsmall= diffsign&xsign;
    //only check for less condition this time
    long bothsign= signdiff&!diffsign;
    return bothsign|xsmall;
}
// 4
/*
 * isPalindrome - Return 1 if bit pattern in x is equal to its mirror image
 *   Example: isPalindrome(0x6F0F0123c480F0F6L) = 1L
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 70
 *   Rating: 4
 */
long isPalindrome(long x) {
    //divide and conquer-Reference Recitation Handout
    //Palindrome==Reverse order should be same
    //1001 reverse 1001-Palindrome, 1010 reverse 0101, not palindrome
    //Idea here is to reverese each bit
    //Using divide and conquer to create masks and then flipping the bits
    //Number 1001, first divide into 10 01 and then rotate
    // 01 10 , Now rotate again-> 10 01, now compare to original number 
    //if matches pallindrome
    //store x value in check variable to reverse and check later.
    long check = x;
    //Cant create a mask directly to flip 32 bits, so using shifting technique.
    long mask32=0xff; 
    mask32+=mask32<<8;
    mask32+=mask32<<16; //0x00000000ffffffff
    //This mask is to divide 32 bits and flip
    long mask16 = 0x00; 
    mask16= mask16<<4 | 0xff;
    mask16= mask16<<8 | 0xff; 
    mask16+=mask16<<32; //0x0000ffff0000ffff
    //This mask is to divide 16 bits and flip
    long mask8= 0x00; 
    mask8=mask8<<8 | 0xff;
    mask8+=mask8<<16;
    mask8+=mask8<<32; //0x00ff00ff00ff00ff
    //This mask is to divide 8 bits and flip
    long mask4=0x00; 
    mask4=mask4<<4 | 0xf;
    mask4+=mask4<<8;
    mask4+=mask4<<16;
    mask4+=mask4<<32;//0x0f0f0f0f0f0f0f0f
    //This mask is to divide 4bits and flip
    long mask2=0x33;
    //mask2+=mask2<<4;
    mask2+=mask2<<8;
    mask2+=mask2<<16;
    mask2+=mask2<<32;
    //This mask is to divide 2 bits and flip
    //long mask1 =0x11;
    long mask1=0x55;
    //mask1+=mask1<<4;
    mask1+=mask1<<8;
    mask1+=mask1<<16;
    mask1+=mask1<<32;
    //This mask is to divide 1 bit and flip

    // Reverse bits using the masks created
    // Shift the 32 bits to left and mask, shift the right 32 bits and mask
    check = ((check >> 32) & mask32) | ((check & mask32) << 32);
    //Now in that 32 bits, shift 16 on either sides
    check = ((check >> 16) & mask16 ) | ((check & mask16) << 16);
    //Similarly rotate 8 bits 
    check = ((check >> 8) & mask8) | ((check & mask8) << 8);
    //Similarly rotate 4 bits
    check = ((check >> 4) & mask4) | ((check & mask4) << 4);
    //Similarly rotate 2 bits
    check = ((check >> 2) & mask2) | ((check & mask2) << 2);
    //Last bits to rotate
    check = ((check >> 1) & mask1) | ((check & mask1) << 1);
    // Compare original and reversed bits, if they are same return 1, else 0
    return !(x ^ check);
    //return(mask2);


}
/*
 * trueThreeFourths - multiplies by 3/4 rounding toward 0,
 *   avoiding errors due to overflow
 *   Examples:
 *    trueThreeFourths(11L) = 8
 *    trueThreeFourths(-9L) = -6
 *    trueThreeFourths(4611686018427387904L) = 3458764513820540928L (no
 * overflow) Legal ops: ! ~ & ^ | + << >> Max ops: 20 Rating: 4
 */
long trueThreeFourths(long x) {
    //Similar to the division by power of 2, but here, power is 2, k=2.
    //To handloe overflow, first divide and then multiply
    long div = x >> 2;
    //to handle -ve values, extract the sign as seen in divPower2
    long sign = x>>63;
    //This division cuts the number by 2 bytes , making easy to add.
    //Calculate the remiainder, becuase this was not working for odd numbers
    //Also have to operate on the reminder.
    long diff = x & ((1L<<2)+ ~1L +1);
    //multiply the div by 3
    // div*3 = div*2 + div, we can write this as div=div<<1 +div
    div = (div<<1)+ div;
    //Calculate for the difference as well
    diff = (diff<<1)+diff;
    //Also adding bias as seen in dividepower2 to handle -ve rounding
    long bias = (1L<<2)+ ~1L +1;
    //long bias= (1L << 2) + ~1L +1; 
return div + ((diff + (sign&bias)) >> 2);
}
/* howManyBits - return the minimum number of bits required to represent x in
 *             two's complement
 *  Examples: howManyBits(12L) = 5L
 *            howManyBits(298L) = 10L
 *            howManyBits(-5L) = 4L
 *            howManyBits(0L)  = 1L
 *            howManyBits(-1L) = 1L
 *            howManyBits(0x8000000000000000L) = 64L
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 70
 *  Rating: 4
 */
long howManyBits(long x) {
    //Adding the total numbre of bits required to represent a number
    //Gettting the sign bit, logic here is that, the number has to be
    //represented by atleast 1 bit, sign bit
    //Extract the signbit
    long signbit = x >> 63;
    //To handle negative numbers, first change the number to its complement and then perform bit additions
    long y = (signbit & ~x) | (~signbit & x);
    // Trying the divide and conquer method as listed in the recitation:
    // long mask1 = 0x55; // 0x01010101
    // mask1+= mask1<<8;   
    // mask1+= mask1<<16;
    // mask1+= mask1<<32;
    // long quarterSum = (y & mask1) + ((y >> 1) & mask1);
    // long mask2 = 0x33 | (0x33 << 8); // 0x001100110011
    // mask2+= mask2 << 8;   
    // mask2+=  mask2 << 16;   
    // long halfSum = (quarterSum & mask2) + ((quarterSum >> 2) & mask2);
    // long mask3 = 0x0f; // 0000111100001111
    // mask3+= mask3<< 8;   
    // mask= mask3<<16;
    // mask3+= mask3<< 32;   
    // long byteSum = (halfSum & mask3) + ((halfSum >> 4) & mask3);
    // long mask4 = 0xff;
    // mask4+= mask4<<8;
    // mask4+= mask4<<16;
    // mask4+= mask4<<32;
    // long wordSum = (byteSum & mask4) + ((byteSum >> 8) & mask4);
    // long mask5 = 0xFF; // 0x0000FFFF
    // mask5+= mask5<<8;
    // mask5+= mask5 | (mask5 << 32); 
    // long totalSum = (wordSum & mask5) + ((wordSum >> 16) & mask5);    
    // Not working 

    //Alternate approach
    //Initialise the sum of bits to 0
    long sum =0L;
    //A differenct approach to divide and conquer to count with the same principles of the 
    // above approach
    //the number of bits using bitwise operators and counting
    //In this approach, we will use the bitwise operator !! to count the number of bits stored 
    //in the first 32 bits and add it to our sum
    // Reference- CodeWithRajRanjan-Solution 2 - Count set bits in a number
    // Masking and Right shift operation | Bit Manipulation
    // YouTube, Jan. 28, 2019. https://www.youtube.com/watch?v=GeipEH-g0e8 
    long bit = !!(y >> 32) << 5;
    y = y>>bit;
    sum+=bit;
    bit=0;
    //Next moving to the 16 bits to identify the bits and add it 
    bit = !!(y >> 16) << 4;
    y = y>>bit;
    sum+=bit;
    bit=0;
    // Do the same for the 8 bit
    bit = !!(y >> 8) <<3;
    y = y>>bit;
    sum+=bit;
    bit=0;
    // Do the same for 4 bit
    bit = !!(y >> 4) << 2;
    y = y>> bit;
    sum+=bit;
    bit=0;
    // 2 bit
    bit = !!(y >> 2) << 1;
    y = y>>bit;
    sum+=bit;
    bit=0;
    //last bit
    bit = !!(y >> 1);
    y = y >>bit;
    sum+=bit;
    bit=0;
    bit=y;
    sum+=bit;
    //Lastly, adding the 1 bit which is required to show the sign
  return sum + 1;
}
