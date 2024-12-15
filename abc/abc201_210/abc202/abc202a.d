import std;

void main() {
    auto a = readln.chomp.split.to!(int[]);

    int res = 21 - a.sum;
    res.writeln;
}
