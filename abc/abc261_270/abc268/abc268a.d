import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    int[int] list;
    foreach (a; A)
        ++list[a];

    auto res = list.length;
    res.writeln;
}
