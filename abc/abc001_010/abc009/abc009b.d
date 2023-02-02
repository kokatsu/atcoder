import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[](N);
    foreach (ref a; A) a = readln.chomp.to!int;

    auto B = A.sort!"a > b".group.array;

    int res = B[1][0];
    res.writeln;
}