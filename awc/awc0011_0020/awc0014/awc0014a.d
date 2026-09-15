import std;

void main() {
    long N, R, T;
    readfln("%d %d %d", N, R, T);

    long[] P = readln.chomp.split.to!(long[]);

    auto A = P.map!(p => min(R, T / p));

    string res = format("%(%d %)", A);
    res.writeln;
}
