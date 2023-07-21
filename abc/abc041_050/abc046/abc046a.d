import std;

void main() {
    auto a = readln.chomp.split.to!(int[]);

    auto res = a.sort.uniq.array.length;
    res.writeln;
}