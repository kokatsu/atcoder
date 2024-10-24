import std;

void main() {
    long x;
    readf("%d\n", x);

    long d = x / 11, r = x % 11;

    long res = d * 2 + floor(log2(r.to!real+2.0)/log2(3.0)).to!long;
    res.writeln;
}