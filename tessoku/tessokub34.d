import std;

void main() {
    long N, X, Y;
    readf("%d %d %d\n", N, X, Y);

    auto A = readln.chomp.split.to!(long[]);

    A[] %= (X + Y);

    long XOR;
    foreach (a; A) {
        if (a < X) XOR ^= 0;
        else if (a <= Y) XOR ^= 1;
        else XOR ^= 2;
    }

    writeln(XOR != 0 ? "First" : "Second");
}