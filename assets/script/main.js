function bodyLoadedMain() {
    const worksParent = document.getElementById("works-parent")
    const works = document.getElementById("works")
    document.getElementById("main").addEventListener("scroll", () => {
        works.style.overflowY = worksParent.getBoundingClientRect().top <= 0 ? "scroll": "hidden"
    })
}
