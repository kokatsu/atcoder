import std;

void main() {
    string S = readln.chomp;

    long M = 2019;

    auto cnts = new long[](M);
    cnts[0] = 1;

    long res, num, p = 1;
    foreach_reverse (s; S) {
        num = (num + (s - '0') * p) % M;
        res += cnts[num];
        ++cnts[num];
        p = (p * 10) % M;
    }

    res.writeln;
}