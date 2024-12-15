import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    a.sort;

    writefln("%(%s %)", a);
}
