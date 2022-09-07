import std;

void main() {
    auto x = readln.chomp.split.to!(int[]);

    int res = 15 - x.sum;
    res.writeln;
}