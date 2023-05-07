import std;

enum int L = 10 ^^ 5;

void main() {
    int N, X, Y;
    readf("%d %d %d\n", N, X, Y);

    auto A = readln.chomp.split.to!(int[]);

    auto grundy = new int[](L+1);
    foreach (i; 0 .. L+1) {
        auto T = new bool[](3);
        if (i >= X) T[grundy[i-X]] = true;
        if (i >= Y) T[grundy[i-Y]] = true;

        if (!T[0]) grundy[i] = 0;
        else if (!T[1]) grundy[i] = 1;
        else grundy[i] = 2;
    }

    int XOR = 0;
    foreach (a; A) XOR ^= grundy[a];

    writeln(XOR != 0 ? "First" : "Second");
}