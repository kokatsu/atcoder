import std;

void main() {
    string S = readln.chomp;

    long a = S[0] - '0';
    long b = S[1] - '0';
    long c = S[2] - '0';

    long res = (a + b + c) * 111;
    res.writeln;
}