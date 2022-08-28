import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(long[]);

    a.sort!"a > b";

    long res;
    foreach (i; 0 .. N) res += a[i*2+1];

    res.writeln;
}