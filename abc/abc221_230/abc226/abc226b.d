import std;

void main() {
    int N;
    readf("%d\n", N);

    auto list = new int[][](N);
    foreach (i; 0 .. N) {
        auto input = readln.chomp.split.to!(int[]);
        list[i] = input[1 .. $];
    }

    list.sort.uniq.array.length.writeln;
}
