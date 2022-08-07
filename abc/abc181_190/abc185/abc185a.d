import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    int res = A.minElement;
    res.writeln;
}