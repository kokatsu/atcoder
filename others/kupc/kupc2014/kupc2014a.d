import std;

void main() {
    auto a = readln.chomp.split.to!(int[]);

    a[0..3].sort, a[3..6].sort;

    int res = reduce!((x, i) => x + abs(a[i]-a[i+3]))(0, iota(3).array);
    res.writeln;
}