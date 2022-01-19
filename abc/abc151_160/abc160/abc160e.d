import std;

void main() {
    long X, Y, A, B, C;
    readf("%d %d %d %d %d\n", X, Y, A, B, C);

    auto p = readln.chomp.split.to!(long[]);
    auto q = readln.chomp.split.to!(long[]);
    auto r = readln.chomp.split.to!(long[]);

    p.sort!"a > b";
    q.sort!"a > b";

    auto coloring = new BinaryHeap!(Array!long, "a > b")();
    foreach (i; 0 .. X) coloring.insert(p[i]);
    foreach (i; 0 .. Y) coloring.insert(q[i]);

    auto colorless = heapify!"a < b"(r);

    while (!colorless.empty && colorless.front > coloring.front) {
        coloring.popFront;
        coloring.insert(colorless.front);
        colorless.popFront;
    }

    long res;
    while (!coloring.empty) {
        res += coloring.front;
        coloring.popFront;
    }

    res.writeln;
}