import std;

void main() {
    int N, P, Q, R, S;
    readf("%d %d %d %d %d\n", N, P, Q, R, S);

    auto A = readln.chomp.split.to!(int[]);

    foreach (i; 0 .. Q - P + 1) {
        A.swapAt(P + i - 1, R + i - 1);
    }

    writefln("%(%s %)", A);
}
