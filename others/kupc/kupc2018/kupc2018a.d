import std;

void main() {
    int N;
    readf("%d\n", N);

    auto s = readln.chomp.split.to!(int[]);
    auto a = readln.chomp.split.to!(int[]);

    int res = zip(s, a).map!(x => x[0] * x[1])
        .fold!max;
    res.writeln;
}
