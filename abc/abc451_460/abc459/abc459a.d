import std;

enum string S = "HelloWorld";

void main() {
    int X;
    readfln("%d", X);

    string res = S[0 .. X - 1] ~ S[X .. $];
    res.writeln;
}
