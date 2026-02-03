import std;

void main() {
    long N;
    readfln("%d", N);

    long lcm = 1;
    foreach (i; 2 .. N + 1) {
        long g = gcd(lcm, i);
        lcm = lcm / g * i;
    }

    long res = lcm + 1;
    res.writeln;
}
