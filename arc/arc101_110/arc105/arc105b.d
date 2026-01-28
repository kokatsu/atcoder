import std;

void main() {
    int N;
    readfln("%d", N);

    int[] a = readln.chomp.split.to!(int[]);

    int res = a.fold!((x, y) => gcd(x, y));
    res.writeln;
}
