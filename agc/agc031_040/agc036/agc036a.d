import std;

void main() {
    long S;
    readf("%d\n", S);

    auto X = new long[](6);
    X[2] = 10 ^^ 9;
    X[4] = 1;
    X[5] = (S + X[2] - 1) / X[2];
    X[3] = X[2] * X[5] - S;

    writefln("%(%s %)", X);
}
