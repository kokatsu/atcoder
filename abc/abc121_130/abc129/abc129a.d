import std;

void main() {
    auto P = readln.chomp.split.to!(int[]);

    int res = P.sum - P.maxElement;
    res.writeln;
}