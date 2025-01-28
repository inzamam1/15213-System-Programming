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
    long f = (~(~x & y) & ~(~y & x));
    // printf(f);
    return (f);
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
    long i = (y) | (!(y ^ x));
    return i;
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
    long y = x & (~x + 1);
    return y;
}
/*
 * oddBits - return word with all odd-numbered bits set to 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 2
 */
long oddBits(void) {
    long x = 0xaa;
    x += x << 8;
    x += x << 16;
    x += x << 32;
    return x;
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
    //long y=1L;
    //long z= y<<n;
    // long bias = (x >> 32) & ((1 << n) + ~1 + 1);

    // return (x + bias) >> n;
    //return 2L;
    //return x+(1<<n)-1;
    long isNegative = x >> 63;        // Extract sign bit: -1 if negative, 0 if positive
    long bias = (1L << n) + ~0L;     // Compute bias: (1 << n) - 1
    long adjustedX = x + (isNegative & bias); // Add bias if x is negative
    return adjustedX >> n;
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
    long diff = y + (~x+1);
    long sign = (diff>>63)&1;
    long xsign = (x>>63)&1;
    long ysign = (y>>63)&1;
    long signDiff= xsign ^ ysign;

    return (!sign&!signDiff)|(signDiff&xsign);
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
    long y =x;
    long sf=1L<<6;

    long left= x<<n;
    long right= y>>(sf+(~n+1));
    right = right &((1L<<n)+~0);

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
    long mask= ~(!x)+1;
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
    long diff = x + (~y+1);
    long sign = (diff>>63)&1;
    long xsign = (x>>63)&1;
    long ysign = (y>>63)&1;
    long signDiff= xsign ^ ysign;

    return (sign&!signDiff)|(signDiff&xsign);
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
    //long mask4=0xf;
    // long mask8=0xff;
    // long mask16=(mask8<<8)+mask8;
    // long mask32=(mask16<<16)+mask16;

    // long hi32 = (x >> 32) & mask32;     // Extract high 32 bits
    // long lo32 = x & mask32;             // Extract low 32 bits

    // // Reverse 32 bits in steps
    //            // Mask for 16 bits
    // long newhi16 = (lo32 & mask16) << 16;  // Extract low 16 bits and shift left
    // long newlo16 = (lo32 >> 16) & mask16;  // Extract high 16 bits
    // long lo32R16 = newhi16 | newlo16;      // Combine reversed 16-bit chunks

    // // Reverse 16 bits
    //                   // Mask for 8 bits
    // long newhi8 = (lo32R16 & mask8) << 8;  // Extract low 8 bits and shift left
    // long newlo8 = (lo32R16 >> 8) & mask8;  // Extract high 8 bits
    // long lo32R8 = newhi8 | newlo8;         // Combine reversed 8-bit chunks

    // // Reverse 8 bits
    // long mask4 = 0xf;                   // Mask for 4 bits
    // long newhi4 = (lo32R8 & mask4) << 4;   // Extract low 4 bits and shift left
    // long newlo4 = (lo32R8 >> 4) & mask4;   // Extract high 4 bits
    // long lo32R4 = newhi4 | newlo4;         // Combine reversed 4-bit chunks

    // // Reverse 4 bits
    // long mask2 = 0x3;                   // Mask for 2 bits
    // long newhi2 = (lo32R4 & mask2) << 2;   // Extract low 2 bits and shift left
    // long newlo2 = (lo32R4 >> 2) & mask2;   // Extract high 2 bits
    // long lo32R2 = newhi2 | newlo2;         // Combine reversed 2-bit chunks

    // // Reverse 2 bits
    // long mask1 = 0x1;                   // Mask for 1 bit
    // long newhi1 = (lo32R2 & mask1) << 1;   // Extract low bit and shift left
    // long newlo1 = (lo32R2 >> 1) & mask1;   // Extract high bit
    // long lo32R = newhi1 | newlo1;          // Combine reversed bits

    // return !(hi32 ^ lo32R);                  // Return true if hi32 matches reversed lo32
    long y = x;
    long mask32=0xff;
    mask32+=mask32<<8;
    mask32+=mask32<<16;
    long mask16 = 0x00; 
    mask16= mask16<<4 | 0xff;
    mask16= mask16<<8 | 0xff; //0x0000FFFF0000FFFF
    mask16+=mask16<<32;
    long mask8= 0x00; //0x00FF00FF00FF00FF
    mask8=mask8<<8 | 0xff;
    mask8+=mask8<<16;
    mask8+=mask8<<32;
    long mask4=0x00;
    mask4=mask4<<4 | 0xf;
    mask4+=mask4<<8;
    mask4+=mask4<<16;
    mask4+=mask4<<32;
    long mask2=0x33;
    //mask2+=mask2<<4;
    mask2+=mask2<<8;
    mask2+=mask2<<16;
    mask2+=mask2<<32;
    long mask1=0x55;
    //mask1+=mask1<<4;
    mask1+=mask1<<8;
    mask1+=mask1<<16;
    mask1+=mask1<<32;

    // Reverse bits in groups of 32, 16, 8, 4, 2, and 1
    y = ((y >> 32) & mask32) | ((y & mask32) << 32);
    y = ((y >> 16) & mask16 ) | ((y & mask16) << 16);
    y = ((y >> 8) & mask8) | ((y & mask8) << 8);
    y = ((y >> 4) & mask4) | ((y & mask4) << 4);
    y = ((y >> 2) & mask2) | ((y & mask2) << 2);
    y = ((y >> 1) & mask1) | ((y & mask1) << 1);
    
    // Compare original and reversed bits using XOR
    // Return 1 if palindrome (x == y), 0 otherwise
    return !(x ^ y);
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
    return 2;
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
    return 0L;
}
