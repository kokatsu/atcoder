import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    int[int] list;
    foreach (A; a)
        ++list[A];

    list.length.writeln;
}
