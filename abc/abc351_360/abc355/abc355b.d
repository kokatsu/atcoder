import std;

struct Element {
    int number;
    dchar sequence;
}

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int[] A = readln.chomp.split.to!(int[]);
    int[] B = readln.chomp.split.to!(int[]);

    auto heap = new BinaryHeap!(Array!Element, (a, b) => a.number > b.number);

    foreach (a; A) {
        heap.insert(Element(a, 'A'));
    }

    foreach (b; B) {
        heap.insert(Element(b, 'B'));
    }

    dchar P;
    bool found = false;
    while (!heap.empty) {
        auto elem = heap.front;
        heap.popFront;
        if (elem.sequence == 'A' && P == 'A') {
            found = true;
            break;
        }
        P = elem.sequence;
    }

    string res = found ? "Yes" : "No";
    res.writeln;
}
