import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    A.sort;

    auto g = A.group;

    uint res = g.filter!(a => a[1] == 1).front[0];
    res.writeln;
}