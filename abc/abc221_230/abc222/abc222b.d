import std;

void main() {
    int N, P;
    readf("%d %d\n", N, P);

    auto a = readln.chomp.split.to!(int[]);

    a.sort;
    auto b = a.assumeSorted;

    b.lowerBound(P).length.writeln;
}