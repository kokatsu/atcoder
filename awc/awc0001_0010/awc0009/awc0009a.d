import std;

void main() {
    long K, M;
    readfln("%d %d", K, M);

    long[] L = readln.chomp.split.to!(long[]);

    long res = L.sum % M;
    res.writeln;
}
