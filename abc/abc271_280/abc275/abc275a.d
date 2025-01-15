import std;

void main() {
    int N;
    readf("%d\n", N);

    auto H = readln.chomp.split.to!(int[]);

    auto res = H.maxIndex + 1;
    res.writeln;
}
