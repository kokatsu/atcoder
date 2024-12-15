import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    int res = a.maxElement - a.minElement;
    res.writeln;
}
