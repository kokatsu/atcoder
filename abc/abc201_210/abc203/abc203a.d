import std;

void main() {
    auto a = readln.chomp.split.to!(int[]);

    auto g = a.sort.group.array;
    g.sort!"a[1] > b[1]";

    int res;
    if (g[0][1] == 2)
        res = g[1][0];
    if (g[0][1] == 3)
        res = g[0][0];

    res.writeln;
}
