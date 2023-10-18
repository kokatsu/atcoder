import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    ulong res = a.countUntil!(x => x == 1) + 1;
    res.writeln;
}