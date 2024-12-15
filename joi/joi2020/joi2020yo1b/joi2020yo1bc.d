import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    auto res = A.sort.group.map!(x => x[1]).maxElement;
    res.writeln;
}
