import std;

struct Stones {
    int color, counts;
}

void main() {
    int n;
    readf("%d\n", n);

    Stones[] list;
    foreach (i; 0 .. n) {
        int c;
        readf("%d\n", c);

        if (i % 2 == 0) {
            if (list.empty || list[$ - 1].color != c) {
                list ~= Stones(c, 1);
            }
            else {
                ++list[$ - 1].counts;
            }
        }
        else {
            if (list[$ - 1].color != c) {
                list[$ - 1].color = c;
                if (list.length > 1 && list[$ - 2].color == list[$ - 1].color) {
                    list[$ - 2].counts += list[$ - 1].counts;
                    list.popBack;
                }
            }
            ++list[$ - 1].counts;
        }
    }

    int res = list.filter!(x => x.color == 0)
        .fold!((a, b) => a + b.counts)(0);
    res.writeln;
}
