import MarkdownIt from 'markdown-it';

const initMarkdown = () => {
  // Listen keyup on textarea
  const md = new MarkdownIt();
  const textarea = document.querySelector('#content');
  textarea.addEventListener('keyup', () => {
    const textareaContent = textarea.value;
    const html = md.render(textareaContent);
    document.querySelector('#markdown-preview').innerHTML = html;
  });
}

export { initMarkdown };
